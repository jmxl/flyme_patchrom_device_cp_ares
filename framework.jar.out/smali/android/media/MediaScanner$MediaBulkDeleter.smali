.class Landroid/media/MediaScanner$MediaBulkDeleter;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBulkDeleter"
.end annotation


# instance fields
.field final mBaseUri:Landroid/net/Uri;

.field final mProvider:Landroid/content/ContentProviderClient;

.field whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 1480
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    .line 1485
    iput-object p1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/ContentProviderClient;

    .line 1486
    iput-object p2, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    .line 1484
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1490
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1496
    invoke-virtual {p0}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1489
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1500
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1501
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 1502
    new-array v0, v2, [Ljava/lang/String;

    .line 1503
    .local v0, "foo":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foo":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 1504
    .restart local v0    # "foo":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    .line 1505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1506
    iget-object v6, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1505
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1506
    const-string/jumbo v6, ")"

    .line 1505
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1504
    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1508
    .local v1, "numrows":I
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1509
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1499
    .end local v0    # "foo":[Ljava/lang/String;
    .end local v1    # "numrows":I
    :cond_0
    return-void
.end method