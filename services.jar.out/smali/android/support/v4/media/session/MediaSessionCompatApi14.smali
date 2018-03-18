.class public Landroid/support/v4/media/session/MediaSessionCompatApi14;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_FAST_FORWARD:J = 0x40L

.field private static final ACTION_PAUSE:J = 0x2L

.field private static final ACTION_PLAY:J = 0x4L

.field private static final ACTION_PLAY_PAUSE:J = 0x200L

.field private static final ACTION_REWIND:J = 0x8L

.field private static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field private static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field private static final ACTION_STOP:J = 0x1L

.field private static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field private static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field private static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field private static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field private static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field private static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field private static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field private static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field private static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field private static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field private static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field private static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field private static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field private static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field private static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field static final RCC_PLAYSTATE_NONE:I = 0x0

.field static final STATE_BUFFERING:I = 0x6

.field static final STATE_CONNECTING:I = 0x8

.field static final STATE_ERROR:I = 0x7

.field static final STATE_FAST_FORWARDING:I = 0x4

.field static final STATE_NONE:I = 0x0

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_REWINDING:I = 0x5

.field static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field static final STATE_STOPPED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method static buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 5

    .prologue
    const/16 v1, 0x64

    const/4 v4, 0x0

    .line 162
    if-eqz p0, :cond_0

    const-string/jumbo v0, "android.media.metadata.ART"

    .line 165
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.media.metadata.ALBUM_ART"

    .line 168
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const-string/jumbo v0, "android.media.metadata.ALBUM"

    .line 173
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    const-string/jumbo v0, "android.media.metadata.ALBUM_ARTIST"

    .line 177
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    const-string/jumbo v0, "android.media.metadata.ARTIST"

    .line 181
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    const-string/jumbo v0, "android.media.metadata.AUTHOR"

    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    const-string/jumbo v0, "android.media.metadata.COMPILATION"

    .line 189
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_5
    const-string/jumbo v0, "android.media.metadata.COMPOSER"

    .line 193
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_6
    const-string/jumbo v0, "android.media.metadata.DATE"

    .line 197
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    const-string/jumbo v0, "android.media.metadata.DISC_NUMBER"

    .line 201
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_8
    const-string/jumbo v0, "android.media.metadata.DURATION"

    .line 205
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_9
    const-string/jumbo v0, "android.media.metadata.GENRE"

    .line 209
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_a
    const-string/jumbo v0, "android.media.metadata.TITLE"

    .line 213
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_b
    const-string/jumbo v0, "android.media.metadata.TRACK_NUMBER"

    .line 217
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_c
    const-string/jumbo v0, "android.media.metadata.WRITER"

    .line 221
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 225
    :goto_d
    return-void

    .line 163
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.media.metadata.ART"

    .line 166
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "android.media.metadata.ALBUM_ART"

    .line 170
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    .line 174
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xd

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    .line 178
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x2

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    .line 182
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_3

    :cond_6
    const/4 v0, 0x3

    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    .line 186
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_4

    :cond_7
    const/16 v0, 0xf

    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    .line 190
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_5

    :cond_8
    const/4 v0, 0x4

    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    .line 194
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_6

    :cond_9
    const/4 v0, 0x5

    const-string/jumbo v1, "android.media.metadata.DATE"

    .line 198
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_7

    :cond_a
    const/16 v0, 0xe

    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    .line 202
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_8

    :cond_b
    const/16 v0, 0x9

    const-string/jumbo v1, "android.media.metadata.DURATION"

    .line 206
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_9

    :cond_c
    const/4 v0, 0x6

    const-string/jumbo v1, "android.media.metadata.GENRE"

    .line 210
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_a

    :cond_d
    const/4 v0, 0x7

    const-string/jumbo v1, "android.media.metadata.TITLE"

    .line 214
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_b

    :cond_e
    const-string/jumbo v0, "android.media.metadata.TRACK_NUMBER"

    .line 218
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v4, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_c

    :cond_f
    const/16 v0, 0xb

    const-string/jumbo v1, "android.media.metadata.WRITER"

    .line 222
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_d
.end method

.method public static createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static getRccStateFromState(I)I
    .locals 1

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    .line 128
    return v0

    :pswitch_0
    const/16 v0, 0x8

    .line 107
    return v0

    :pswitch_1
    const/16 v0, 0x9

    .line 109
    return v0

    :pswitch_2
    const/4 v0, 0x4

    .line 111
    return v0

    :pswitch_3
    const/4 v0, 0x0

    .line 113
    return v0

    :pswitch_4
    const/4 v0, 0x2

    .line 115
    return v0

    :pswitch_5
    const/4 v0, 0x3

    .line 117
    return v0

    :pswitch_6
    const/4 v0, 0x5

    .line 119
    return v0

    :pswitch_7
    const/4 v0, 0x7

    .line 121
    return v0

    :pswitch_8
    const/4 v0, 0x6

    .line 124
    return v0

    :pswitch_9
    const/4 v0, 0x1

    .line 126
    return v0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    .line 134
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 135
    const/16 v0, 0x20

    :cond_0
    const-wide/16 v2, 0x2

    .line 137
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 138
    or-int/lit8 v0, v0, 0x10

    :cond_1
    const-wide/16 v2, 0x4

    .line 140
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 141
    or-int/lit8 v0, v0, 0x4

    :cond_2
    const-wide/16 v2, 0x8

    .line 143
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 144
    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v2, 0x10

    .line 146
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 147
    or-int/lit8 v0, v0, 0x1

    :cond_4
    const-wide/16 v2, 0x20

    .line 149
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 150
    or-int/lit16 v0, v0, 0x80

    :cond_5
    const-wide/16 v2, 0x40

    .line 152
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 153
    or-int/lit8 v0, v0, 0x40

    :cond_6
    const-wide/16 v2, 0x200

    .line 155
    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 156
    or-int/lit8 v0, v0, 0x8

    .line 158
    :cond_7
    return v0
.end method

.method public static registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "audio"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 95
    check-cast p1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 96
    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 87
    check-cast p0, Landroid/media/RemoteControlClient;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 89
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 90
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 91
    return-void
.end method

.method public static setState(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 78
    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 79
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 1

    .prologue
    .line 82
    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 84
    return-void
.end method

.method public static unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "audio"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 100
    check-cast p1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 101
    return-void
.end method
