.class public final Lcom/google/android/gms/internal/ads/zzeft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzefv;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdfa;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzdfa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeft;->zza:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeft;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeft;->zzc:Lcom/google/android/gms/internal/ads/zzdfa;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeft;->zzc:Lcom/google/android/gms/internal/ads/zzdfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdfa;->zzdP(Lcom/google/android/gms/internal/ads/zzcai;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzedi;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzjv:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeft;->zza:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzimj;

    if-eqz v4, :cond_0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzefs;

    invoke-direct {v5, v4, p1}, Lcom/google/android/gms/internal/ads/zzefs;-><init>(Lcom/google/android/gms/internal/ads/zzimj;Lcom/google/android/gms/internal/ads/zzcai;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeft;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    const-class v6, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-static {v0, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzhav;->zzh(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzefr;-><init>(Lcom/google/android/gms/internal/ads/zzeft;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final synthetic zzb()Lcom/google/android/gms/internal/ads/zzdfa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeft;->zzc:Lcom/google/android/gms/internal/ads/zzdfa;

    return-object v0
.end method
