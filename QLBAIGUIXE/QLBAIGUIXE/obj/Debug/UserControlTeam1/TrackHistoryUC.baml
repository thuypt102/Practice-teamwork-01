   M S B A M L   `   `   `  ????O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      E AQLBAIGUIXE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:QLBAIGUIXE.UserControlTeam1QLBAIGUIXE.UserControlTeam1 5      0   *QLBAIGUIXE.UserControlTeam1.TrackHistoryUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9System&clr-namespace:System;assembly=mscorlib     5      ;local)clr-namespace:QLBAIGUIXE.UserControlTeam1     5         MaterialDesignBody#???   5	      $??Regular"?5
      $??16(?5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=?5         TextRenderingMode$
 Auto=?5        MaterialDesignPaper#???  5        MaterialDesignFont#???  5      .??5      ? $??0,0,0,0q?6    ? RowDefinitions 5   
   ?? 5      $
??1.5* ?6   ?? 5      $??1* ?6   ?? 5      $
??1.5* ?6   ?? 5      $??7* ?6   ?? 5      $??2* ?6   .+?5   
   ? $??10q?6   $??0??6   .+?5      ?? $??30(?6   $??Center=?5      $??Center=?5      $
??Wrap=?5      ?? 5      .?6   *(Theo dõi lịch sử nhập xuất bãi67   5      5       ? 5!   
   $??1??6   .+?5"      ?? $??22(?6   $??35,0,0,0q?6&   ?? 5#      .?6   Thời gian6"   5$      5%      ? 5&   
   $??2??6    ? ColumnDefinitions 5'      ?? 5(      $??1* ?6#   ?? 5)      $
??2.5* ?6#   ?? 5*      $??1* ?6#   ?? 5+      $
??2.5* ?6#   ?? 5,      $
??2.2* ?6#   ?? 5-      $??3* ?6#   ?? 5.      $??2* ?6#   .+?50      ? $??0??6   $??35,0,0,0q?6#   .+?51      ?? $??22(?6   $??Center=?6*   Từ6J   52      ? 53      $??1??6   .+?54      (  "System.Windows.Controls.DatePicker  $??25??6   $
??Left=?55      $??0,0,0,0q?5:      $??Center=?5;      $	??200??5<         SelectedDate 56      ?? *	dateBegin+ ?? Mode$ TwoWay=?
 ?? Now ?? TargetNullValue# Z 5<      5=      ? 5>      $??2??6   $??50,0,0,0q?6#   .+?5?      ?? $??22(?6   $??Center=?6*   Đến6J   5@      ? 5A      $??3??6   .+?5B        $??25??6   $
??Left=?5C      $??30,0,0,0q?5H      $??Center=?5I      $	??200??5J       5D      ?? *	dateEnd+$ TwoWay=?# Z 5J      5K      ? 5f      $??5??6   .+?5g      ?? $??18(?5h      $??Hiển thị??5i      
??? ? ?$??Center=?5k      $??Center=?6$   $	??120??5l      ??5g      ?? *DisplayCommand+5m      5n      5o      ? 5p   
   $??3??6   .+?5q      ?? $??20q?6   
???????
???   ?$??1q?6H   $
??1050??6\   ._?5r      ?? -   5        $??MenList??5s      $??0q?5r      $??Center=?6&   ??6E   ?? *List+ ?? SelectedItem 6b   ?? *SelectedItem+$ OneWayToSource=?	 ?? View	 5t      ?? 5u      .P?5v      ?? $??Thời gian??6-   
 ?? Width$

 auto??5w   C    ?? DisplayMemberBinding 6   ?? *CheckOutTime+6C   ?? 5y      $??Biển số xe??6-   $

 auto??5z   C    6   ?? *LicensePlate+6C   ?? 5|      $??	Loại xe??6-   $

 auto??5}   ;    6   ?? *Name+6;   ?? 5      $??	Số CMND??6-   $

 auto??5?   ;    6   ?? *Code+6;   ?? 5?      $??Thành tiền??6-   $

 auto??5?   <    6   ?? *Price+6<   ?? 5?      $??Tên khách hàng??6-   $

 auto??5?   B    6   ?? *DisplayName+6B   ?? 5?      $??Nhân viên??6-   $

 auto??5?   ?    6   ?? *
UserName+6?   5?      5?      5?      5?      ? 5?   
   $??4??6   5?      5?      5?      