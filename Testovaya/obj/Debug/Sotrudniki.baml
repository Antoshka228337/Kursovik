   M S B A M L   `   `   `  ����D  @Testovaya, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Testovaya	Testovaya  5   	       Testovaya.Sotrudniki   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Testovaya     5   	   -   5          � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
Sotrudniki��5
   	   $	��450��6   $	��800��6)   .��5      � 
������� � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      �� 5      $��60 �6   .+�5   
   �� -   5         ��Name$ skrit��5      $"��Авторизованные��5      $��10q�5      $��20��5      $	��160��5      $
��Left=�5      $��Arial)�6A   $��14(�6T   �� 5   
   $��Сотрудники��6   $��203,20,0,20q�5      $��20��5      $	��160��5      $
��Left=�5      $��Arial)�6,   $��14(�6?   �� 5!   
   -   5        $��Настройки��5!      $��594,20,0,20q�5"      $��20��5#      $	��160��5$      $
��Left=�5%      $��Arial)�6D   $��14(�6W   �� 5'   
   -   5        $��Расписание��5'      $��400,20,0,20q�5(      $��20��5)      $	��160��5*      $
��Left=�5+      $��Arial)�6C   $��14(�6V   &   System.Windows.Controls.DataGrid  5.   
   -   5          Name$ 
UsersGrid2��51      $��Arial)�5.      $��1��5/         AutoGenerateColumns .     
IsReadOnly .    Columns 52      0  *System.Windows.Controls.DataGridTextColumn  53      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Номер��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 64   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6>   �� *Id+  54      $ Полное Имя��6%   $
	 Auto 69   
 6F   �� *
FullName+  55      $ Дата рождения��6%   $	 * 6<   
 6F   �� *Date+  56      $ Должность��6%   $	 * 68   
 6B   �� *	Dolzhnost+  57      $ Телефон��6%   $	 * 66   
 6@   �� *Number+  58      $ 
Семья��6%   $	 * 64   
 6>   �� *Family+  59      $ 
Адрес��6%   $	 * 64   
 6>   �� *Adress+4  .System.Windows.Controls.DataGridTemplateColumn  5:      $
	 auto 6)      CellTemplate 5;      �� 5<      .R�5=      �� -   5        $��Изменить��5=   <   $	��Top=�6O   $��20��6g   ���	#FF116ACC
�������6�   5>      5@      5B      �� 5C   
   $��2��6   $��Center=�5D       �� Orientation$ 
Horizontal=�5E      $��Center=�5F      .+�5H      �� -   5        $��24��5H      $��Добавить��5J      $	��150��5K      $��5q�6!   $��Arial)�6,   $��14(�6?   �� 5L      -   5        $��24��5L      $)��#Сформировать отчёт��5N      $	��150��5O      $��5q�6!   $��Arial)�6,   $��14(�6?   �� 5S      -	   5        $ Btn_Del��5S      $��24��5T      $��Удалить��5V      $	��150��5W      $��5q�6!   $��14(�6,   $��Arial)�6:   5Y      �� 5Z   
   $��
744,0,0,14q�6   $��/znachok.png��6$   $��43��6:   $��43��6E   $��Bottom=�6Q   $
��Left=�6l   5^      5_      