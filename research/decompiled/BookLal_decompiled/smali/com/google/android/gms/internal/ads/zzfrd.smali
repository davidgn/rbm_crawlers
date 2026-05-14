.class final Lcom/google/android/gms/internal/ads/zzfrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfoz;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfpj;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdel;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfrf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfrf;Lcom/google/android/gms/internal/ads/zzfoz;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzdel;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfoz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfpj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzc:Lcom/google/android/gms/internal/ads/zzdel;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzd:Lcom/google/android/gms/internal/ads/zzfrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfoz;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfpj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzd:Lcom/google/android/gms/internal/ads/zzfrf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzm()Lcom/google/android/gms/internal/ads/zzfpc;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrf;->zze()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpm;->zzb(Lcom/google/android/gms/internal/ads/zzfpc;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zza(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zzh()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zza:Lcom/google/android/gms/internal/ads/zzfoz;

    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v3, Lcom/google/android/gms/ads/internal/util/client/zzt;->zza:Lcom/google/android/gms/ads/internal/util/client/zzt;

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzb:Lcom/google/android/gms/internal/ads/zzfpj;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzd:Lcom/google/android/gms/internal/ads/zzfrf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfoz;->zzm()Lcom/google/android/gms/internal/ads/zzfpc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfrf;->zze()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpm;->zzb(Lcom/google/android/gms/internal/ads/zzfpc;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zza(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzh()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzc:Lcom/google/android/gms/internal/ads/zzdel;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrd;->zzd:Lcom/google/android/gms/internal/ads/zzfrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrf;->zzd()Lcom/google/android/gms/ads/internal/util/client/zzu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "precision"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "currency"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "value"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const v7, 0x10576

    const/4 v8, -0x1

    const/4 v10, 0x2

    if-eq v3, v7, :cond_6

    const v7, 0x10580

    if-eq v3, v7, :cond_5

    const v7, 0x506e232d

    if-eq v3, v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "ONE_PIXEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    goto :goto_3

    :cond_5
    const-string v3, "CPM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_3

    :cond_6
    const-string v3, "CPC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v8

    :goto_3
    const/4 v3, 0x3

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_9

    if-eq v0, v10, :cond_8

    move v7, v1

    :goto_4
    move-wide v11, v5

    goto :goto_5

    :cond_8
    const-wide/16 v11, 0x3e8

    :try_start_1
    div-long/2addr v5, v11

    move v7, v3

    goto :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_9
    move-wide v11, v5

    move v7, v10

    goto :goto_5

    :cond_a
    move v7, v2

    goto :goto_4

    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const v5, -0x7f136fe4

    if-eq v0, v5, :cond_d

    const v5, 0x17cbce3b

    if-eq v0, v5, :cond_c

    const v5, 0x4bc5cce6    # 2.5926092E7f

    if-eq v0, v5, :cond_b

    goto :goto_6

    :cond_b
    const-string v0, "PUBLISHER_PROVIDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v8, v2

    goto :goto_6

    :cond_c
    const-string v0, "PRECISE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v8, v10

    goto :goto_6

    :cond_d
    const-string v0, "ESTIMATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v8, v1

    :cond_e
    :goto_6
    if-eqz v8, :cond_11

    if-eq v8, v2, :cond_10

    if-eq v8, v10, :cond_f

    move v8, v1

    goto :goto_7

    :cond_f
    move v8, v3

    goto :goto_7

    :cond_10
    move v8, v10

    goto :goto_7

    :cond_11
    move v8, v2

    :goto_7
    :try_start_2
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzt;

    move-object v6, v0

    move-wide v10, v11

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/ads/internal/client/zzt;-><init>(IILjava/lang/String;J)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdel;->zza(Lcom/google/android/gms/ads/internal/client/zzt;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_8
    const-string v0, "UrlPinger.pingUrl"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_12
    :goto_9
    return-void
.end method
