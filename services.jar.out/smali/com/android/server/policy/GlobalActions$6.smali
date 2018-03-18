.class Lcom/android/server/policy/GlobalActions$6;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->handleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set4(Lcom/android/server/policy/GlobalActions;Ljava/util/Timer;)Ljava/util/Timer;

    .line 274
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    new-instance v1, Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions$DelayCloseDialog;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$DelayCloseDialog;)V

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$DelayCloseDialog;)Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get15(Lcom/android/server/policy/GlobalActions;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 272
    return-void
.end method
