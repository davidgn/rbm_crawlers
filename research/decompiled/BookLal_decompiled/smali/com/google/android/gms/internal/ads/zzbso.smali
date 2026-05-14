.class final synthetic Lcom/google/android/gms/internal/ads/zzbso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsz;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsy;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbru;

.field private final synthetic zzd:Ljava/util/ArrayList;

.field private final synthetic zze:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzbsy;Lcom/google/android/gms/internal/ads/zzbru;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:Lcom/google/android/gms/internal/ads/zzbsy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:Lcom/google/android/gms/internal/ads/zzbru;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzbso;->zze:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:Lcom/google/android/gms/internal/ads/zzbsy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:Lcom/google/android/gms/internal/ads/zzbru;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbso;->zze:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbsz;->zzf(Lcom/google/android/gms/internal/ads/zzbsy;Lcom/google/android/gms/internal/ads/zzbru;Ljava/util/ArrayList;J)V

    return-void
.end method
