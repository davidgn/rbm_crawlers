.class public final Lcom/google/android/gms/internal/ads/zzael;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaeo;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:J

.field private final zze:J

.field private final zzf:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaeo;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzael;->zza:Lcom/google/android/gms/internal/ads/zzaeo;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzael;->zzb:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzael;->zzc:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzael;->zzd:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/zzael;->zze:J

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zzael;->zzf:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzael;->zzb:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzagh;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzael;->zza:Lcom/google/android/gms/internal/ads/zzaeo;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeo;->zza(J)J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzael;->zzc:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzael;->zzd:J

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzael;->zze:J

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzael;->zzf:J

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzaen;->zza(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagk;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzagk;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagk;)V

    return-object v2
.end method

.method public final zzd(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzael;->zza:Lcom/google/android/gms/internal/ads/zzaeo;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeo;->zza(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzael;->zzc:J

    return-wide v0
.end method

.method public final synthetic zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzael;->zzd:J

    return-wide v0
.end method

.method public final synthetic zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzael;->zze:J

    return-wide v0
.end method

.method public final synthetic zzh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzael;->zzf:J

    return-wide v0
.end method
