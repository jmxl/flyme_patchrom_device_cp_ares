.class Lcom/android/server/BatteryService$7$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$7;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/BatteryService$7;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 319
    const-string/jumbo v0, "BatteryService"

    const-string/jumbo v1, "healthd died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v0, v0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->registerListenerAsync()V

    .line 318
    return-void
.end method
