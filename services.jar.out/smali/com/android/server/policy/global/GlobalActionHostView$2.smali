.class Lcom/android/server/policy/global/GlobalActionHostView$2;
.super Ljava/lang/Object;
.source "GlobalActionHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionHostView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionHostView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionHostView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView$2;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$2;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/IMediatorCallback;->reboot()V

    .line 66
    return-void
.end method
