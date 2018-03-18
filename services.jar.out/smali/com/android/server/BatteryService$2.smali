.class Lcom/android/server/BatteryService$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 774
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget v0, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 775
    .local v0, "batteryTemp":I
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHandler postDelayed is run and  battery temperature is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " after 5mins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v1, :cond_3

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 778
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "battery temperature is above 50C for 5 mins, need to warn user"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/server/utils/ZsBatteryPromptUtils;->HIGH_TEMPER:I

    invoke-static {v1, v2}, Lcom/android/server/utils/ZsBatteryPromptUtils;->showTemperWarningDialog(Landroid/content/Context;I)V

    .line 773
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get0(Lcom/android/server/BatteryService;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 781
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/server/utils/ZsBatteryPromptUtils;->LOW_TEMPER:I

    invoke-static {v1, v2}, Lcom/android/server/utils/ZsBatteryPromptUtils;->showTemperWarningDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 783
    :cond_2
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "battery temperate is back to normal in 5 mins, ignore this time"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->isTemperWarningStarted:Z

    goto :goto_0

    .line 787
    :cond_3
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "not charing now!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
