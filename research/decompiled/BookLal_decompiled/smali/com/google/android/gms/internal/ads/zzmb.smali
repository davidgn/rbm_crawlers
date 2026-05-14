.class final synthetic Lcom/google/android/gms/internal/ads/zzmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmf;

.field private final synthetic zzb:Landroid/util/Pair;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwk;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzwp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmf;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzmf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzc:Lcom/google/android/gms/internal/ads/zzwk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzd:Lcom/google/android/gms/internal/ads/zzwp;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzb:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmb;->zza:Lcom/google/android/gms/internal/ads/zzmf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzmf;->zza:Lcom/google/android/gms/internal/ads/zzmk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmk;->zzj()Lcom/google/android/gms/internal/ads/zznf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzc:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzd:Lcom/google/android/gms/internal/ads/zzwp;

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzxe;->zzak(ILcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V

    return-void
.end method
