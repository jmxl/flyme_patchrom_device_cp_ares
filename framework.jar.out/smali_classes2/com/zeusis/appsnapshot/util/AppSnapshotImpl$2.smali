.class Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"

# interfaces
.implements Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;


# direct methods
.method constructor <init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bt"    # Landroid/graphics/Bitmap;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get9(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get9(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set2(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z

    .line 205
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z

    .line 206
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-virtual {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->release()V

    .line 200
    return-void
.end method
