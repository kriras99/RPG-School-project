   M S B A M L   `   `   `  ����A  =Engine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE/clr-namespace:Engine.ViewModels;assembly=EngineEngine.ViewModels  5   	    RPG   WPFUI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   F
viewModels/clr-namespace:Engine.ViewModels;assembly=Engine     5   	   -   5        $
��11pt(�5	   	     � Title$   Kristoffer's awesome game!��5
   	   $	��768��6,   $
��1024��69    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $	��225 �6    � ColumnDefinitions 5   
   �� 5      $	��250 �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��2��6-   $
��Menu��6A   
�������6P   � 5"   
   $��1��6   $��0��6   
������ 5#      �� 5$      $
��Auto �6    �� 5%      $
��Auto �6    �� 5&      $
��Auto �6    �� 5'      $
��Auto �6    �� 5(      $
��Auto �6    �� 5)      $
��Auto �6    �� 5*      $
��Auto �6     5-      �� 5.      $
��Auto �6#   �� 5/      $
��Auto �6#   .+�52      �� $��0��6   $��0��6!   $��Name:��61   �� 53      $��0��6   $��1��6!   ��61   �� *CurrentPlayer.Name+�� 54      $��1��6   $��0��6!   $��Class:��61   �� 55      $��1��6   $��1��6!   ��61   �� *CurrentPlayer.CharacterClass+�� 56      $��2��6   $��0��6!   $��Hit points:��61   �� 57      $��2��6   $��1��6!   ��61   �� * CurrentPlayer.CurrentHitPoints+�� 58      $��3��6   $��0��6!   $��Gold:��61   �� 59      $��3��6   $��1��6!   ��61   �� *CurrentPlayer.Gold+�� 5:      $��4��6   $��0��6!   $	��XP:��61   �� 5;      $��4��6   $��1��6!   ��61   �� * CurrentPlayer.ExperiencePoints+�� 5<      $��5��6   $��0��6!   $��Level:��61   �� 5=      $��5��6   $��1��6!   ��61   �� *CurrentPlayer.Level+5>      � 5B   
   $��1��6   $��1��6   
������� 5D      �� 5E      $��* �6    �� 5F      $��* �6     5I      �� 5J      $��3* �6#   �� 5K      $��2* �6#   .+�5P      �� $��0��6   $��0��6"   $��2��5Q      
�������$��1q�5S      ._�5U      �� -   5         ��Name$ GameMessages��5U      
�������" �� VerticalScrollBarVisibility$
 Auto=�5W       �� 
IsReadOnly .  �� AcceptsReturn .   5X       �� 
TargetType	 �� Property
 �� Value��%X   'J�       �� 5Y      " J�6    .�5Z      �� 	 �@��Margin$
 0q�67   5[      5\      5]      5_      �� 5c      $��0��6   $��1��6"   
�������$��1q�5d   -   ._�5e      � $��3q�6    5f      �� 5g      $
��Auto �6(   �� 5h      $��* �6(   �� 5i      $
��Auto �6(   .+�5l      �� $��0��6    $��Center=�5m       ��5n       �� *CurrentLocation.Name+�� 5o      $��1��6   $��Center=�5p      $��Center=�5q      $	��125��5r      $	��125��5s      ��5t      �� *CurrentLocation.ImageName+  FileToBitmapConverter �� 	Converter# [ �� 5v      $��2��6    $��Center=�5w       $
��Wrap=�5y       ��5x       �� *CurrentLocation.Description+5y       5z      5{      �� 5      $��1��6   $��1��6"   
�������$��1q�5�      ._�5�      �  5�      �� 5�      $
��Auto �6(   �� 5�      $��* �6(   �� 5�      $
��Auto �6(   .+�5�      �� $��0��6    $��Center=�5�       $
��Auto��5�       ��5�       �� *CurrentMonster.Name+�� 5�      $��1��6   $��Center=�5�      $��Center=�5�      $	��125��5�      $	��125��5�      ��5�      �� *CurrentMonster.ImageName+# [ �� 5�      $��2��6!   $��Center=�5�   !    �� Orientation$ 
Horizontal=�5�   !   y�5�   !   �� *
HasMonster+# [  .+�5�      �� Current Hit Points:69   �� 5�      ��6$   �� *!CurrentMonster.CurrentHitPoints+5�      5�      5�      5�      � 5�   
   $��2��6   $��0��6   
�������.+�5�      �� -   5         ��Name$ PlayerDataTabControl��5�      .@�5�      �� -   5         ��Name$ InventoryTabItem��5�      $��	Inventory��5�      .��5�      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .     HeadersVisibility$ Column=�5�      ��5�      �� **(CurrentPlayer.Inventory.GroupedInventory+   Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ Description��61      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 5�   1   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5�   1   �� *	Item.Name+ �� Mode$ OneWay=�5�   1     5�      $	 Qty��61      
IsReadOnly . $
 Auto 5�   1    5�   1   �� *
Quantity+$ OneWay=�  5�      $ Price��61   $
 Auto 5�   1    5�   1   �� *
Item.Price+$ OneWay=�5�   1   5�      5�      �� 5�      -   5        $ QuestsTabItem��5�      $��Quests��5�      .��5�         .  $ Column=�5�      ��5�      �� *CurrentPlayer.Quests+ 5�        5�      $
 Name��61   $ * 5�   1    5�   1   �� *PlayerQuest.Name+$ OneWay=�   	CellStyle 5�   "   �� 5�   &   *  $System.Windows.Controls.DataGridCell"  6,   .�5�   *   �� 	 �@�ToolTip
 5�   1   �� *PlayerQuest.ToolTipContents+5�   '   5�        5�      $ Done?��61   $
 Auto 5�   1    5�   1   �� *IsCompleted+$ OneWay=�5�   1   5�      5�      �� 5�      -   5        $ RecipesTabItem��5�      $��Recipes��5�      .��5�         .  $ Column=�5�      ��5�      �� *CurrentPlayer.Recipes+ 5�        5�      $
 Name��61   $ * 5�   1    5�   1   �� *Name+$ OneWay=� 5�   "   �� 5�   &   "  6,   .�5�   *   �� 	 �@�ToolTip
 5�   1   �� *ToolTipContents+5�   '   5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�         MinWidth$ 75Q�65      CellTemplate 5�   "   �� 5�   &   .R�5�   *   �� -   5        $��55��5�   1   $��Craft��5�   1   5�   '   5�      5�      5�      5�      5�      � 5�   
   $��2��6   $��1��6   
������� 5�      �� 5�      $��* �6     5      �� 5     $��* �6#   �� 5     $	��255 �6#   .+�5     � $��0��6   $��0��6    $��Center=�5     $��Center=�5	      5
     �� 5     $
��Auto �6$   �� 5     $
��Auto �6$    5     �� 5     $	��150 �6'   �� 5     $��10 �6'   �� 5     $��50 �6'   .+�5     �� $��0��6   $��0��6(    �� DisplayMemberPath$
 Name��5     y�5     �� *
HasMonster+# [  ��5     �� *!CurrentPlayer.Inventory.Weapons+ �� SelectedItem 5     �� *CurrentPlayer.CurrentWeapon+5     �� 5     -   5        $��0��5     $��2��6&   $	��Use��5     y�5     �� *
HasMonster+# [  5     �� 5      $��1��6   $��0��6(   $
 Name��5$     y�5!     �� *'%CurrentPlayer.Inventory.HasConsumable+# [  ��5"     �� *%#CurrentPlayer.Inventory.Consumables+ 5#     �� *!CurrentPlayer.CurrentConsumable+5$     �� 5&     -	   5        $��1��5&     $��2��6&   $	��Use��5(     y�5'     �� *'%CurrentPlayer.Inventory.HasConsumable+# [  5)     5*     � 5.     $��0��6   $��1��6     5/     �� 50     $��* �6$   �� 51     $��* �6$   �� 52     $��* �6$    55     �� 56     $��* �6'   �� 57     $��* �6'   �� 58     $��* �6'   .+�5;     �� -
   5        $��0��5;     $��1��6&   $��25��5<     $��65��6%   $��10q�60   $��North��5?     y�5>     �� *HasLocationToNorth+# [  5?     �� 5@     -   5        $��1��5@     $��0��6&   $��25��5A     $��65��6%   $��10q�60   $
��West��5D     y�5C     �� *HasLocationToWest+# [  5D     �� 5E     -   5        $��1��5E     $��1��6&   $��25��5F     $��65��6%   $��10q�60   $��Trade��5I     y�5H     �� *	HasTrader+# [  5I     �� 5J     -   5        $��1��5J     $��2��6&   $��25��5K     $��65��6%   $��10q�60   $
��East��5N     y�5M     �� *HasLocationToEast+# [  5N     �� 5O     -   5        $��2��5O     $��1��6&   $��25��5P     $��65��6%   $��10q�60   $��South��5S     y�5R     �� *HasLocationToSouth+# [  5S     5U     5V     5\     5]     