   M S B A M L   `   `   `  ����D  @Testovaya, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Testovaya	Testovaya  5   	       Testovaya.WelcomePage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Testovaya     5   	   -   5          � WindowStartupLocation$  CenterScreen=�5   	    � Title$ WelcomePage��5
   	   $	��450��6   $	��800��6*   .��5      � 
������� � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      �� 5      $��60 �6   .+�5   
   �� -   5         ��Name$ skritoe��5      $"��Авторизованные��5      $��10q�5      $��20��5      $	��160��5      $
��Left=�5      $��Arial)�6,   $��14(�6?   �� 5   
   -   5        $��Сотрудники��5      $��203,20,0,20q�5      $��20��5      $	��160��5      $
��Left=�5      $��Arial)�6C   $��14(�6V   �� 5    
   -   5        $��Настройки��5       $��594,20,0,20q�5!      $��20��5"      $	��160��5#      $
��Left=�5$      $��14(�6A   $��Arial)�6O   �� 5%   
   $��
744,0,0,14q�6   $��/znachok.png��6$   $��43��6:   $��43��6E   $��Bottom=�6Q   $
��Left=�6l   �� 5'   
   -   5        $ Raspis��5'      $��Расписание��6!   $��400,20,0,20q�5(      $��20��5)      $	��160��5*      $
��Left=�5+      $��Arial)�6A   $��14(�6T   &   System.Windows.Controls.DataGrid  5-   
   -   5          Name$ 	UsersGrid��5/      $��1��5-         AutoGenerateColumns .     
IsReadOnly .    Columns 51      0  *System.Windows.Controls.DataGridTextColumn  52      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 61   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6;   �� *Id+  53      $ Login��6%   $	 * 64   
 6>   �� *Login+  54      $ Password��6%   $	 * 67   
 6A   �� *
Password+  55      $
 Role��6%   $	 * 63   
 6=   �� *
Role.Title+57      �� 58   
   $��2��6   $��Center=�59       �� Orientation$ 
Horizontal=�5:      $��Center=�5;      .+�5=      �� -   5        $��24��5=      $��Добавить��5?      $	��150��5@      $��5q�6!   $
��Left=�6,   $��Arial)�6G   $��14(�6Z   �� 5C      -   5        $ Btn_Del��5C      $��24��5D      $��Удалить��5F      $	��150��5G      $��Right=�6!   $��Arial)�6=   $��14(�6P   5I      5J      5K      