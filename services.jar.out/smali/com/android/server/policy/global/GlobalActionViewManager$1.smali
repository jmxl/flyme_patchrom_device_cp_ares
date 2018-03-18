.class Lcom/android/server/policy/global/GlobalActionViewManager$1;
.super Ljava/lang/Object;
.source "GlobalActionViewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-wrap0(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    .line 183
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->-wrap0(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 173
    return-void
.end method
