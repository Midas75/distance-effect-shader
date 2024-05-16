# Distance Effect Shader
用于在Unity中渲染线性深度图，从而接入其他业务。
效果如下：
![raw_pic](./pic/raw_pic.png)
![distance_pic](./pic/distance_pic.png)

对渲染出来的每个像素点，其单通道的归一化值即表示其线性深度：
$$0.0-1.0 \rightarrow 0-100m$$

若想要调整其线性深度最大值，可修改Shader。