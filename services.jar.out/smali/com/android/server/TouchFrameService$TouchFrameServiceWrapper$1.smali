.class Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper$1;
.super Ljava/lang/Object;
.source "TouchFrameService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->setOpenPaymentMenuSwith(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper$1;->this$1:Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper$1;->this$1:Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;

    iget-object v0, v0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/TouchFrameService;->-set6(Lcom/android/server/TouchFrameService;Z)Z

    .line 434
    return-void
.end method
