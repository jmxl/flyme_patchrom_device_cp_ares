.class Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$3;
.super Ljava/lang/Thread;
.source "AppSnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootStart(Landroid/graphics/Bitmap;)V
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
    .line 282
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$3;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, " scrollShootStart run() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$3;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V

    .line 285
    return-void
.end method
