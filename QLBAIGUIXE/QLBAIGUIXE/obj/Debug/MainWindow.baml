   M S B A M L   `   `   `  ????E  AQLBAIGUIXE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:QLBAIGUIXE
QLBAIGUIXE  5   	   I)clr-namespace:QLBAIGUIXE.UserControlTeam1QLBAIGUIXE.UserControlTeam1  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5   	       QLBAIGUIXE.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:QLBAIGUIXE     5   	   _ [MaterialDesignThemes.Wpf, Version=4.6.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  60   2uc)clr-namespace:QLBAIGUIXE.UserControlTeam1  5   	   XiPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity  5   	   -   5        $??
mainWinDow??5   	      MaterialDesignBody#???   5	   	   $??Regular"?5
   	   $??13(?5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=?5   	      TextRenderingMode$
 Auto=?5   	     MaterialDesignPaper#???  5   	     MaterialDesignFont#???  5   	    ? WindowStartupLocation$ CenterScreen=?5   	    ? 
ResizeMode$ NoResize=?5   	    ? WindowStyle$
 None=?5   	    
 MainVM ? DataContext# [ 5   	    ? Title$ Trang chủ??5   	   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded??6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   ?? *LoadedWindowCommand+   CommandParameter 6L   ??  ?? ElementName$ 
mainWinDow??5      .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??auto ?6   ?? 5      .+?5!   
   ? $??0??6   .+?5"      /   )QLBAIGUIXE.UserControlTeam1.UserControlUC  
 ? Tag 6   ?? *Title+$ 
mainWinDow??5#      ? 5$   
   -   5        $??GridMain??5$      $??1??6    5%        5&      $ Loaded??6!   .	 5'        
 6,   ?? *LoadedGridMainCommand+ 6V   ?? $ GridMain??5(      5*      5,      5-      