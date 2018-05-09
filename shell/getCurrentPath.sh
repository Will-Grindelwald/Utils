# 可以处理 子shell 远程调用 等 所有情况
cur=$(cd `dirname $0`; pwd)

# 获得 模糊路径的 精确值
$(cd ./zookeeper-*; pwd)
