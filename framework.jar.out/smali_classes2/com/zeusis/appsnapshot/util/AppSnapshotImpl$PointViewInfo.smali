.class Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointViewInfo"
.end annotation


# instance fields
.field distance:I

.field endY:I

.field scrollEnd:I

.field scrollStart:I

.field startY:I

.field final synthetic this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;-><init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V

    return-void
.end method
