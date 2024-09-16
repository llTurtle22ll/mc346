import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.Maybe (fromMaybe)

type Graph = [(String, String, Double)]
type DistanceMap = Map.Map String Double

-- Função que obtém os vizinhos de um dado vértice em um grafo
getNeighbors :: String -> Graph -> [(String, Double)]
getNeighbors node graph = 
    [(v2, dist) | (v1, v2, dist) <- graph, v1 == node] ++
    [(v1, dist) | (v1, v2, dist) <- graph, v2 == node]

-- Função principal de Dijkstra que retorna a menor distância entre dois nós
proj4 :: Graph -> String -> String -> Maybe Double
proj4 graph start end = dijkstra' (Map.singleton start 0) Set.empty
  where
    -- Função auxiliar que executa o algoritmo de Dijkstra
    dijkstra' :: DistanceMap -> Set.Set String -> Maybe Double
    dijkstra' dist visited
        | current == end = Map.lookup end dist  -- Se chegamos ao destino, retorna a distância
        | otherwise = 
            let newVisited = Set.insert current visited
                newDist = foldl (updateDistance current) dist (getNeighbors current graph)
                unvisited = Map.filterWithKey (\k _ -> Set.notMember k newVisited) newDist
            in if Map.null unvisited
               then Nothing  -- Não há caminho até o destino
               else dijkstra' newDist newVisited
      where
        -- Obtém o nó não visitado com a menor distância
        (current, _) = Map.findMin (Map.filterWithKey (\k _ -> Set.notMember k visited) dist)

    -- Atualiza a distância de um nó vizinho
    updateDistance :: String -> DistanceMap -> (String, Double) -> DistanceMap
    updateDistance current dist (neighbor, cost) = 
        let currentDist = fromMaybe (1 / 0) (Map.lookup current dist)
            neighborDist = fromMaybe (1 / 0) (Map.lookup neighbor dist)
            newDist = currentDist + cost
        in if newDist < neighborDist
           then Map.insert neighbor newDist dist
           else dist

main = print (proj4 [ ("1", "2", 7),
  ("1", "3", 9),
  ("2", "3", 20),
  ("4", "5", 6),
  ("5", "6", 9)
  ] "2" "3")
