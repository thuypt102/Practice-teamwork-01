   M S B A M L   `   `   `  ????E  AQLBAIGUIXE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:QLBAIGUIXE
QLBAIGUIXE  5   	   I)clr-namespace:QLBAIGUIXE.UserControlTeam1QLBAIGUIXE.UserControlTeam1  5   	   +    %QLBAIGUIXE.UserControlTeam1.ParkingUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:QLBAIGUIXE     5   	   8uc)clr-namespace:QLBAIGUIXE.UserControlTeam1     5   	   _ [MaterialDesignThemes.Wpf, Version=4.6.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
   -   5        $??
Employeeuc??5         MaterialDesignBody#???   5
   	   $??Regular"?5   	   $??16(?5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=?5   	      TextRenderingMode$
 Auto=?5   	     MaterialDesignPaper#???  5   	     MaterialDesignFont#???  5   	   .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??auto ?6    60   ?? 5      $
??auto ?6    60   ?? 5      6"   .+?5   
   ? $??0??6   $??0 10 0 0q?6   .+?5      ?? $??30(?6   $??Center=?5      $??Center=?5      $
??Wrap=?5      ?? 5      .?6   Quản lý bãi gửi xe6+   5      5       ?? 5!   
   $
??Auto=?6   $??1??6:   $??10 10 10 10q?6G   .??5"      ?? $	??700??6o   $
??Left=?6{   ??6   ?? *List+ ?? SelectedItem 64   ?? *SelectedItem+ ?? Mode$ OneWayToSource=? ?? View 5#      ?? 5$      .P?5%      ?? $??Mã bãi??6)    ?? DisplayMemberBinding 69   ?? *Type+6a   ?? 5&      $??Tên bãi gửi??6)    6>   ?? *Name+6f   ?? 5'      $??Số lượng chỗ đỗ??6)    6B   ?? *Count+6k   5)      5+      5,      ? 5.   
   $??1??6    5/      ?? 50      $
??auto ?6    60   ?? 51      $
??auto ?6    60   ?? 52      6"   .+?54      ? $
??auto??6   $??2??6    $	??400??61   $??0,0,10,0q?6>   .+?55      #  MaterialDesignThemes.Wpf.Card  $	??250??6&   $	??250??62   $??700,30,30,120q?6?   .??56      ? $??Center=?6    $??0,0,10,0q?6=   .+?57      ?? $??15q?6j   $	??100??6v   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã bãi??6?    % !MaterialDesignFloatingHintTextBox#??[ 6?   ??6"   ?? *Type+$ TwoWay=? ?? UpdateSourceTrigger$ PropertyChanged=?6?   ?? 58      $??15q?6i   $	??100??6u   $ 	Tên bãi??6?   #??[ 6?   ??6"   ?? *Name+$ TwoWay=?$ PropertyChanged=?6?   ?? 59      $??15q?6k   $	??100??6w   $ 
Số chỗ??6?   #??[ 6?   ??6"   ?? *Count+$ TwoWay=?$ PropertyChanged=?6?   5:      5<      5=        5>      $	??250??6"   $??698,0,42,78q?6.   $	??200??6C   $??1??6P   $??2??6]   .??5?      ? $??Center=?6   $	??106??69   .+?5@      ?? $??Thêm??6<   $??17q?6K   $??71??6W   ??6   ?? *
AddCommand+6d   ?? 5A      $??Sửa??6=   $??17q?6K   $??71??6W   ??6   ?? *EditCommand+6d   ?? 5B      $
??Xóa??6?   $??17q?6M   $??71??6Y   ??6   ?? *DeleteCommand+6f   5C      5D      5F      5G      5H      