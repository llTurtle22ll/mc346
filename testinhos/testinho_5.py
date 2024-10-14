def maior_substring_comum(fim: str, inicio: str) -> int:
    min_len = min(len(fim), len(inicio))
    for i in range(min_len, 0, -1):
        if fim[-i:] == inicio[:i]:
            return i
    return 0


# Exemplo de uso
resultado = maior_substring_comum("abc", "cde")
print(resultado)

