.class public final Landroid/app/Notification$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private final mSender:Ljava/lang/CharSequence;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .prologue
    .line 5072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5073
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 5074
    iput-wide p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    .line 5075
    iput-object p4, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    .line 5072
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 5167
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Landroid/os/Bundle;

    .line 5168
    .local v1, "bundles":[Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 5169
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5170
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v3}, Landroid/app/Notification$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5172
    :cond_0
    return-object v1
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 5190
    :try_start_0
    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "time"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5193
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5194
    const-string/jumbo v3, "time"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "sender"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5193
    invoke-direct {v1, v2, v4, v5, v3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 5195
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5196
    const-string/jumbo v2, "uri"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 5195
    if-eqz v2, :cond_0

    .line 5198
    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5199
    const-string/jumbo v2, "uri"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5198
    invoke-virtual {v1, v3, v2}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5201
    :cond_0
    return-object v1

    .line 5191
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_1
    return-object v6

    .line 5203
    :catch_0
    move-exception v0

    .line 5204
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v6
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 4
    .param p0, "bundles"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5176
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5177
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 5178
    aget-object v3, p0, v0

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 5179
    aget-object v3, p0, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    .line 5180
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v1, :cond_0

    .line 5181
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5177
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5185
    :cond_1
    return-object v2
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 5149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5150
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 5151
    const-string/jumbo v1, "text"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5153
    :cond_0
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5154
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 5155
    const-string/jumbo v1, "sender"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5157
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5158
    const-string/jumbo v1, "type"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 5161
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5163
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5137
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5145
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5130
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5116
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 5123
    iget-wide v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 0
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 5106
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 5107
    iput-object p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 5108
    return-object p0
.end method