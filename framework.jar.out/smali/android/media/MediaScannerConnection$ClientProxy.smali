.class Landroid/media/MediaScannerConnection$ClientProxy;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientProxy"
.end annotation


# instance fields
.field final mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mMimeTypes:[Ljava/lang/String;

.field mNextPath:I

.field final mPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    .line 196
    iput-object p2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    .line 197
    iput-object p3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 194
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    .line 200
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    .line 204
    return-void
.end method

.method scanNextPath()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 213
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 214
    iput-object v3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    iget v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    aget-object v0, v1, v2

    .line 218
    :goto_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    iget v3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    .line 211
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    .local v0, "mimeType":Ljava/lang/String;
    goto :goto_0
.end method
