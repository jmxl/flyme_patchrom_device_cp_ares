.class Lcom/zeusis/widget/dialog/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/dialog/BaseDialog;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/dialog/BaseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/BaseDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$1;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$1;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get7(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$1;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get7(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->-wrap2(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$1;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-wrap0(Lcom/zeusis/widget/dialog/BaseDialog;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
