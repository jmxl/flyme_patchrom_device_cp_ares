.class public interface abstract Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;
.super Ljava/lang/Object;
.source "AppSnapshotWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/appsnapshot/AppSnapshotWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAppSnapshotFailed(I)V
.end method

.method public abstract onAppSnapshotFinished(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onAppSnapshotStart()V
.end method
