.class final synthetic Lcom/google/android/gms/internal/ads/zzacb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzacc;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzB()Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzd(Lcom/google/android/gms/internal/ads/zzbv;)V

    return-void
.end method
