.class final synthetic Lcom/google/android/gms/internal/ads/zzaax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaay;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaay;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zza:Lcom/google/android/gms/internal/ads/zzaay;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zza:Lcom/google/android/gms/internal/ads/zzaay;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaay;->zzc()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzd:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaba;->zzX(IJJ)V

    return-void
.end method
