N, K = map(int, input().split())
coins = []
for _ in range(N):
  coins.append(int(input()))
coins.reverse()

cnt = 0
for coin in coins:
  cnt += K // coin
  K %= coin
  
  if K == 0: break

print(cnt)