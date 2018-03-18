.class public Lcom/android/server/wifi/WifiApConfigStore;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"


# static fields
.field private static final AP_CONFIG_FILE_VERSION:I = 0x2

.field private static final DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

.field private static final STA_BLACKLIST_FILE:Ljava/lang/String;

.field private static final STA_WHITELIST_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"

.field private static mEnableRegionalHotspotCheckbox:Z


# instance fields
.field private mAllowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApConfigFile:Ljava/lang/String;

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mContext:Landroid/content/Context;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "/misc/wifi/hostapd.deny"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->STA_BLACKLIST_FILE:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "/misc/wifi/hostapd.accept"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->STA_WHITELIST_FILE:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p3, "apConfigFile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 67
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 82
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 84
    iput-object p3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 87
    const v4, 0x1040039

    .line 86
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "ap2GChannelListStr":Ljava/lang/String;
    const-string/jumbo v3, "WifiApConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2G band allowed channels are:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v0, :cond_0

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 92
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "channelList":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 94
    .local v2, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "channelList":[Ljava/lang/String;
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 99
    const v4, 0x11200d8

    .line 98
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 106
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_2

    .line 108
    const-string/jumbo v3, "WifiApConfigStore"

    const-string/jumbo v4, "Fallback to use default AP configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 112
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 81
    :cond_2
    return-void
.end method

.method private getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 224
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 225
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 226
    const-string/jumbo v5, "device_name"

    .line 225
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 229
    const v5, 0x10403ee

    .line 228
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 233
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 234
    const v5, 0x10e00be

    .line 233
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 235
    .local v3, "wifiApSecurityType":I
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 236
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 237
    const v5, 0x1040082

    .line 236
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 238
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "randomUUID":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    const/16 v6, 0xd

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 243
    .end local v2    # "randomUUID":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiApConfigStore;->setMaxNumOfClients(I)V

    .line 244
    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 245
    return-object v0

    .line 231
    .end local v3    # "wifiApSecurityType":I
    :cond_2
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 152
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    .line 154
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 153
    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .end local v4    # "in":Ljava/io/DataInputStream;
    move-result v6

    .line 157
    .local v6, "version":I
    if-eq v6, v7, :cond_1

    if-eq v6, v12, :cond_1

    .line 158
    const-string/jumbo v7, "WifiApConfigStore"

    const-string/jumbo v8, "Bad version on hotspot configuration file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 181
    if-eqz v5, :cond_0

    .line 183
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-object v11

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 162
    sget-boolean v9, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    if-eqz v9, :cond_2

    .line 163
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    :goto_1
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 165
    :cond_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->aclType:I

    .line 167
    if-lt v6, v12, :cond_3

    .line 168
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 169
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 172
    :cond_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 173
    .local v0, "authType":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V

    .line 174
    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 181
    :cond_4
    if-eqz v5, :cond_5

    .line 183
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_2
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 189
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    :cond_6
    :goto_3
    return-object v1

    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :cond_7
    move v7, v8

    .line 163
    goto :goto_1

    .line 184
    .restart local v0    # "authType":I
    :catch_1
    move-exception v3

    .line 185
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    .line 178
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error reading hotspot configuration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    const/4 v1, 0x0

    .line 181
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_6

    .line 183
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 184
    :catch_3
    move-exception v3

    .line 185
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 180
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 181
    :goto_5
    if-eqz v4, :cond_8

    .line 183
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 180
    :cond_8
    :goto_6
    throw v7

    .line 184
    :catch_4
    move-exception v3

    .line 185
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WifiApConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing hotspot configuration during read"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_5

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_5

    .line 177
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4
.end method

.method private stringIsMac(Ljava/lang/String;)Z
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string/jumbo v0, "([A-Fa-f0-9]{2}:){5}[A-Fa-f0-9]{2}"

    .line 352
    .local v0, "trueMacAddress":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v1, 0x1

    return v1

    .line 355
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 197
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 198
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 200
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 201
    sget-boolean v6, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    if-eqz v6, :cond_1

    .line 202
    iget-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    :cond_1
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->aclType:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 205
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 206
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 207
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 208
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 209
    if-eqz v0, :cond_2

    .line 210
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 214
    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 212
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 213
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :goto_1
    const-string/jumbo v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 214
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    :cond_4
    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v0    # "authType":I
    .local v2, "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    if-eqz v5, :cond_7

    :try_start_6
    throw v5

    .line 212
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_5

    :cond_6
    if-eq v5, v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public getAclType()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->aclType:I

    return v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowed2GChannel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHiddenSsid()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    return v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxNumOfClients()I
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "WIFI_HOTSPOT_MAX_CLIENT_NUM"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public loadBlackList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    const/4 v4, 0x0

    .line 324
    .local v4, "in":Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "blackListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Lcom/android/server/wifi/WifiApConfigStore;->STA_BLACKLIST_FILE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 329
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiApConfigStore;->stringIsMac(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 330
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 333
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    move-object v4, v5

    .line 334
    .end local v5    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 335
    const-string/jumbo v7, "Ejaven"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    const/4 v0, 0x0

    .line 341
    .local v0, "blackListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 343
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 346
    :cond_1
    :goto_2
    return-object v0

    .line 341
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    .local v0, "blackListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 343
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 346
    :cond_3
    :goto_3
    return-object v0

    .line 344
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    .line 337
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 338
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "ignore":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string/jumbo v7, "Ejaven"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "blackListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    .line 343
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 346
    :cond_4
    :goto_5
    return-object v0

    .line 344
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "ignore":Ljava/io/IOException;
    .restart local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 340
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    .local v0, "blackListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    .line 341
    :goto_6
    if-eqz v4, :cond_5

    .line 343
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 346
    :cond_5
    :goto_7
    return-object v0

    .line 344
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 340
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    goto :goto_6

    .line 333
    .local v4, "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    .restart local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .line 337
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    .restart local v3    # "ignore":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public loadWhiteList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    const/4 v3, 0x0

    .line 296
    .local v3, "in":Ljava/io/BufferedReader;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v6, "whiteListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Lcom/android/server/wifi/WifiApConfigStore;->STA_WHITELIST_FILE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 301
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiApConfigStore;->stringIsMac(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 302
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 305
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    move-object v3, v4

    .line 306
    .end local v4    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 307
    const-string/jumbo v7, "Ejaven"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    const/4 v6, 0x0

    .line 313
    .local v6, "whiteListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 315
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 318
    :cond_1
    :goto_2
    return-object v6

    .line 313
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .local v6, "whiteListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v4, :cond_3

    .line 315
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 318
    :cond_3
    :goto_3
    return-object v6

    .line 316
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_3

    .line 309
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 310
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "ignore":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string/jumbo v7, "Ejaven"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    const/4 v6, 0x0

    .line 313
    .local v6, "whiteListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 315
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 318
    :cond_4
    :goto_5
    return-object v6

    .line 316
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ignore":Ljava/io/IOException;
    .restart local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    .local v6, "whiteListCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    .line 313
    :goto_6
    if-eqz v3, :cond_5

    .line 315
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 318
    :cond_5
    :goto_7
    return-object v6

    .line 316
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto :goto_6

    .line 305
    .local v3, "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .restart local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .line 309
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    .restart local v2    # "ignore":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public setAclType(I)V
    .locals 1
    .param p1, "aclType"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->aclType:I

    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 279
    :cond_0
    return-void
.end method

.method public declared-synchronized setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    monitor-enter p0

    .line 130
    if-nez p1, :cond_0

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 129
    return-void

    .line 133
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHiddenSsid(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 268
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 265
    :cond_0
    return-void
.end method

.method public setMaxNumOfClients(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    .local v0, "token":J
    if-gtz p1, :cond_0

    const/16 v2, 0xb

    if-le v2, p1, :cond_1

    .line 253
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "WIFI_HOTSPOT_MAX_CLIENT_NUM"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    return-void

    .line 256
    :catchall_0
    move-exception v2

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw v2
.end method
