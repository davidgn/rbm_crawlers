.class public final Lcom/google/android/gms/internal/ads/zzdph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzbmh;

.field zzb:Lcom/google/android/gms/internal/ads/zzbme;

.field zzc:Lcom/google/android/gms/internal/ads/zzbmu;

.field zzd:Lcom/google/android/gms/internal/ads/zzbmr;

.field zze:Lcom/google/android/gms/internal/ads/zzbrp;

.field final zzf:Lr/k;

.field final zzg:Lr/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr/k;

    invoke-direct {v0}, Lr/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdph;->zzf:Lr/k;

    new-instance v0, Lr/k;

    invoke-direct {v0}, Lr/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdph;->zzg:Lr/k;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdph;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbme;)Lcom/google/android/gms/internal/ads/zzdph;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zzb:Lcom/google/android/gms/internal/ads/zzbme;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbmu;)Lcom/google/android/gms/internal/ads/zzdph;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zzc:Lcom/google/android/gms/internal/ads/zzbmu;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbmr;)Lcom/google/android/gms/internal/ads/zzdph;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zzd:Lcom/google/android/gms/internal/ads/zzbmr;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbrp;)Lcom/google/android/gms/internal/ads/zzdph;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zze:Lcom/google/android/gms/internal/ads/zzbrp;

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbmn;Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzdph;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdph;->zzf:Lr/k;

    invoke-virtual {v0, p1, p2}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdph;->zzg:Lr/k;

    invoke-virtual {p2, p1, p3}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdpi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdpi;-><init>(Lcom/google/android/gms/internal/ads/zzdph;[B)V

    return-object v0
.end method
