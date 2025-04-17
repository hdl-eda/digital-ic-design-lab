#### Verilog HDL code for BCD 2 digit adder

EDAPlayground 

<https://edaplayground.com/x/jCx_>


![image](https://user-images.githubusercontent.com/127012447/224267133-e551fc06-635f-400d-a110-ae5bb5b6f4b0.png)

![image](https://user-images.githubusercontent.com/127012447/224267240-75dca5ae-cc11-4a18-93f1-6ba5571e01a0.png)

![image](https://user-images.githubusercontent.com/127012447/224267328-6d0c1ec6-2b40-4acd-913e-d1de83d45e9d.png)

<p> 9’s compliment generator

Since the final circuit is made for both addition and subtraction operations, I'm going to make a special circuit with mode selection. 2’s complement method is used for binary subtraction. But in BCD it must be 9’s complement method. As shown in figure I have designed 9’s compliment generator in the following manner. 

9 - B = X</p>

![image](https://user-images.githubusercontent.com/127012447/224268460-30b86265-2aaf-425e-8934-8a854d017c03.png)

![image](https://user-images.githubusercontent.com/127012447/224268681-7dcd61cb-3039-4899-990e-3e9a6b5f8b36.png)

![image](https://user-images.githubusercontent.com/127012447/224268792-3ac7a405-a67c-42b6-84c2-a2e32631cd38.png)

<p>1-digit BCD adder subtractor

Combining the above 9’s complement generator and the BCD adder it is able to design the 1 -digit BCD adder subtractor as follows.
</p>

![image](https://user-images.githubusercontent.com/127012447/224269010-5cd06526-8827-45e7-b58d-baa06b09844a.png)

