   M S B A M L   `   `   `  ����B  >SandBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:SandBoxSandBox  5   	       SandBox.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:SandBox     5   	     � Title$  Window1��5   	   $	��450��6   $	��800��6&    � WindowStartupLocation$ CenterScreen=�62   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ TableDataGrid��5
         AutoGenerateColumns .  $	��300��6F      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 qwe��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6J   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *ads+6J     5      $	 asd��6%   $ * 6J    62   �� *ads+6J     5      $	 zxc��6%   $ * 6J    62   �� *ads+6J   5      �� 5   
   -   5         ��Name$ CmbTest��5      $	��150��6$   $��25��60   $
��Left=�6<   $	��Top=�6W   $��	10,10,0,0q�6o   ��5      �� 5      .R�5      �� ��6    �� *Test+5      5        5   
   -   5        $ 	TableTest��5       .  $	��100��6B   $��	10,10,0,0q�6O    5        5      $	 123��6%   $ * 62    6<   ��   5      $	 qwe��6%   $ * 62    6<   ��   5      $	 asd��6%   $ * 62    6<   ��   5      $	 zxc��6%   $ * 62    6<   �� 5!      �� 5)   
   -   5        $ CmBTest2��5)      $��Right=�6%   $	��Top=�6A   $	��150��6Y   $��25��6e   $��	0,10,10,0q�6q   ��5*      �� 5+      .R�5,      �� ��6    �� *qweqweqweqeqweqweq+5-      5/      �� 50   
   -   5        	 ��Name$	 txtTextBlock1��50      $	��110��6)   $��21��65   $
��Left=�6A   $��Bottom=�6\   $��	10,0,0,10q�6w   $��user1��6�   (  "System.Windows.Controls.DatePicker  51   
   -   5        
  Name$
 datePickerTest��51      $	��110��6-   $��25��69   $��Right=�6E   $��Bottom=�6a   $��	0,0,10,10q�6|   �� 52   
   -   5        $
��Test��52      $	��110��6    $��30��6,   $��Center=�68   $��Bottom=�6U   $��0,0,0,10q�6p   6�   G� 53   
   -   5         G�Name$ txtPassword��53       G� Password$ 12345��6+   $	��110��6<   $��30��6H   $��Center=�6T   $	��Top=�6q    G� PasswordChar$ *��6�   $��17(�6�   $��Tahoma)�6�   �� 54   
   -	   5        $ CmBTest3��54      $	��110��6%   $��30��61   $��Center=�6=   $��Bottom=�6Z   $��
0,0,330,10q�6u   ��55      �� 56      .R�57      �� ��6    �� *
qweqweqweq+58      5:      5;      5=      