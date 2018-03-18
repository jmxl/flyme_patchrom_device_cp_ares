.class Lcom/android/server/TouchFrameService$4;
.super Ljava/lang/Thread;
.source "TouchFrameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TouchFrameService;->back()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TouchFrameService;


# direct methods
.method constructor <init>(Lcom/android/server/TouchFrameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TouchFrameService;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/server/TouchFrameService$4;->this$0:Lcom/android/server/TouchFrameService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 909
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 910
    .local v0, "inst":Landroid/app/Instrumentation;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 908
    return-void
.end method
