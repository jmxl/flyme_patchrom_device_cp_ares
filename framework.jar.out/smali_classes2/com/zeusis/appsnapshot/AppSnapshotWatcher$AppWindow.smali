.class public Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;
.super Ljava/lang/Object;
.source "AppSnapshotWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/appsnapshot/AppSnapshotWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

.field window:Landroid/view/IWindow;


# direct methods
.method public constructor <init>(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;Landroid/view/IWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/AppSnapshotWatcher;
    .param p2, "client"    # Landroid/view/IWindow;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    .line 80
    return-void
.end method
