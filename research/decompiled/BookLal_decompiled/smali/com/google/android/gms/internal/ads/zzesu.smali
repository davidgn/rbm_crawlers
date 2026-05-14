.class public final Lcom/google/android/gms/internal/ads/zzesu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdpi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzesh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdbz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesu;->zza:Lcom/google/android/gms/internal/ads/zzdpi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesh;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzesh;-><init>(Lcom/google/android/gms/internal/ads/zzdyq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzb:Lcom/google/android/gms/internal/ads/zzesh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zze()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzest;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzest;-><init>(Lcom/google/android/gms/internal/ads/zzesh;Lcom/google/android/gms/internal/ads/zzbrp;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzc:Lcom/google/android/gms/internal/ads/zzdbz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzb:Lcom/google/android/gms/internal/ads/zzesh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzesh;->zzl(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdnc;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzb:Lcom/google/android/gms/internal/ads/zzesh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesu;->zza:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzesh;->zzi()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdnc;-><init>(Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzesh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzb:Lcom/google/android/gms/internal/ads/zzesh;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzddk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzb:Lcom/google/android/gms/internal/ads/zzesh;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdbz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesu;->zzc:Lcom/google/android/gms/internal/ads/zzdbz;

    return-object v0
.end method
