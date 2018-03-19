.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;
.super Lcom/android/ims/ImsConnectionStateListener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 9
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .prologue
    const/4 v8, 0x1

    .line 2226
    if-ne p1, v8, :cond_5

    .line 2227
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v4

    .line 2231
    .local v4, "tmpIsVideoCallEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x78

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2232
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "onFeatureCapabilityChanged: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    const/4 v2, 0x0

    .line 2235
    .local v2, "i":I
    :goto_0
    const/4 v5, 0x5

    if-gt v2, v5, :cond_2

    .line 2236
    array-length v5, p2

    if-ge v2, v5, :cond_2

    .line 2237
    aget v5, p2, v2

    if-ne v5, v2, :cond_0

    .line 2240
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    const-string/jumbo v5, ":true "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z

    move-result-object v5

    aput-boolean v8, v5, v2

    .line 2236
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2245
    :cond_0
    aget v5, p2, v2

    .line 2246
    const/4 v6, -0x1

    .line 2245
    if-ne v5, v6, :cond_1

    .line 2249
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    const-string/jumbo v5, ":false "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z

    move-result-object v5

    const/4 v6, 0x0

    aput-boolean v6, v5, v2

    goto :goto_1

    .line 2257
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onFeatureCapabilityChanged("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2258
    const-string/jumbo v7, "): unexpectedValue="

    .line 2257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2258
    aget v7, p2, v2

    .line 2257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2263
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2265
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v5

    if-eq v4, v5, :cond_3

    .line 2266
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 2272
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onFeatureCapabilityChanged: isVolteEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2273
    const-string/jumbo v7, ", isVideoCallEnabled="

    .line 2272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2273
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v7

    .line 2272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2274
    const-string/jumbo v7, ", isVowifiEnabled="

    .line 2272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2274
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v7

    .line 2272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2275
    const-string/jumbo v7, ", isUtEnabled="

    .line 2272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2275
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v7

    .line 2272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2276
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2277
    .local v0, "connection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    goto :goto_2

    .line 2279
    .end local v0    # "connection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRilImsRadioTechnology(I)V

    .line 2280
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    .line 2282
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v5

    .line 2283
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z

    move-result-object v7

    .line 2282
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCapabilities(I[Z)V


    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->broadcastFlymeImsStatusChange()V

    .line 2225
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "tmpIsVideoCallEnabled":Z
    :cond_5
    return-void
.end method

.method public onImsConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "onImsConnected"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2182
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 2183
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    .line 2184
    const/4 v2, 0x0

    .line 2183
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V

    .line 2179
    return-void
.end method

.method public onImsDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2191
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Lcom/android/ims/ImsReasonInfo;)V

    .line 2193
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    .line 2194
    const/4 v2, 0x3

    .line 2193
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V

    .line 2188
    return-void
.end method

.method public onImsProgressing()V
    .locals 4

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "onImsProgressing"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    .line 2203
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2202
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V

    .line 2198
    return-void
.end method

.method public onImsResumed()V
    .locals 4

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "onImsResumed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    .line 2211
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2210
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V

    .line 2207
    return-void
.end method

.method public onImsSuspended()V
    .locals 4

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "onImsSuspended"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2217
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 2218
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    .line 2219
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 2218
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V

    .line 2215
    return-void
.end method

.method public onVoiceMessageCountChanged(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVoiceMessageCountChanged :: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 2288
    return-void
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "registrationAssociatedUriChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2296
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCurrentSubscriberUris([Landroid/net/Uri;)V

    .line 2294
    return-void
.end method

.method private broadcastFlymeImsStatusChange()V
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/BuildExt;->isMtkPlatform()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.ims.IMS_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .local v1, "serviceState":I
    const-string v2, "android:regState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android:phone_id"

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
