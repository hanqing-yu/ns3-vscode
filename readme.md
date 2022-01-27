## ns3-vscode

Debug ns3 in Visual Studio Code

## Usage

1. `git clone https://github.com/iqhy/ns3-vscode.git `
2. `bash install.sh`
3. Open VSCode and install the [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
4. Press F1, choose "Remote Container : attach to running container", then choose the "ns3-vscode" container. (If remote server is used, connect to it first)
5. Install the [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) extension in the container
6. Open folder `/usr/ns-allinone-3.34/ns-3.34`
7. Open file `/scratch/scratch-simulator.cc`, set a breakpoint in the main function and press F5. The program will run and stop at the breakpoint.

Now you can debug your own ns3 code in VSCode.





## ns3-vscode

使用 Visual Studio Code 调试 ns3

## 使用方法

1. `git clone https://github.com/iqhy/ns3-vscode.git `
2. `bash install.sh`
3. 打开 VSCode, 安装 [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) 插件
4. 按下 F1，选择 Remote Container : attach to running container，选择 ns3-vscode 容器。（如果使用的是远程服务器，先连接到服务器）
5. 在容器内安装 [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) 插件
6. 使用 VSCode 在容器内打开文件夹 `/usr/ns-allinone-3.34/ns-3.34`
7. 打开 `scratch` 文件夹中的 `scratch-simulator.cc` 文件，在主函数中设置一个断点后按 F5 。程序将运行并在断点处停止。

现在你可以使用 VSCode 调试你自己的代码了。

