.class final Lcom/google/android/gms/internal/ads/zzaci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaea;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzus;

.field final synthetic zzb:I

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzacm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacm;Lcom/google/android/gms/internal/ads/zzus;IJ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzus;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzus;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:J

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacm;->zzaB(Lcom/google/android/gms/internal/ads/zzus;IJJ)V

    return-void
.end method

.method public final zzb()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzus;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzacm;->zzay(Lcom/google/android/gms/internal/ads/zzus;IJ)V

    return-void
.end method
