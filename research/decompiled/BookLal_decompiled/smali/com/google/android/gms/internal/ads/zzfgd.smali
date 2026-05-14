.class public final Lcom/google/android/gms/internal/ads/zzfgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfhb;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzdbe;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgd;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdbe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgd;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfhc;->zzb:Lcom/google/android/gms/internal/ads/zzfgz;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfha;->zza(Lcom/google/android/gms/internal/ads/zzfgz;)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfhf;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfhf;-><init>(Z)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbd;->zzj(Lcom/google/android/gms/internal/ads/zzfhf;)Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdbd;->zzh()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgd;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdbe;->zza()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfmb;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzfmb;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyc;->zzb()LN2/o;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfgc;-><init>(Lcom/google/android/gms/internal/ads/zzfgd;Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzcyc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgd;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfgb;-><init>(Lcom/google/android/gms/internal/ads/zzfmb;)V

    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhan;

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Ljava/lang/Object;)LN2/o;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfgd;->zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgd;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    return-object v0
.end method
