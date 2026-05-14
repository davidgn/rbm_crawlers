.class public final Lcom/google/android/gms/internal/ads/zzdtx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzddd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzddq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdeh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdha;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfjn;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcso;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdbu;Lcom/google/android/gms/internal/ads/zzddd;Lcom/google/android/gms/internal/ads/zzddq;Lcom/google/android/gms/internal/ads/zzdeh;Lcom/google/android/gms/internal/ads/zzdha;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzcso;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzb:Lcom/google/android/gms/internal/ads/zzddd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzc:Lcom/google/android/gms/internal/ads/zzddq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzd:Lcom/google/android/gms/internal/ads/zzdeh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zze:Lcom/google/android/gms/internal/ads/zzdha;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzf:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzg:Lcom/google/android/gms/internal/ads/zzfjn;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzh:Lcom/google/android/gms/internal/ads/zzcso;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduc;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzb:Lcom/google/android/gms/internal/ads/zzddd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzduc;->zzk()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdtw;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzdtw;-><init>(Lcom/google/android/gms/internal/ads/zzddd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zza:Lcom/google/android/gms/internal/ads/zzdbu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzc:Lcom/google/android/gms/internal/ads/zzddq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzd:Lcom/google/android/gms/internal/ads/zzdeh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zze:Lcom/google/android/gms/internal/ads/zzdha;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdtq;->zzm(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbnl;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbnn;Lcom/google/android/gms/ads/internal/overlay/zzad;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzf:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzg:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzh:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzduc;->zzg(Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzcso;)V

    return-void
.end method
