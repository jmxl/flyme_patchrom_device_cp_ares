.class Lcom/android/server/BatteryService$19;
.super Ljava/util/TimerTask;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->showCountDownDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field countTime:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1242
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/BatteryService$19;->countTime:I

    .line 1241
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1246
    iget v1, p0, Lcom/android/server/BatteryService$19;->countTime:I

    if-lez v1, :cond_0

    .line 1247
    iget v1, p0, Lcom/android/server/BatteryService$19;->countTime:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService$19;->countTime:I

    .line 1249
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1250
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/BatteryService$19;->countTime:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1251
    iget-object v1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mOffHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1245
    return-void
.end method
