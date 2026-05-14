.class final synthetic Lcom/google/android/gms/internal/ads/zzfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfq;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfq;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfq;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zze(ZZ)V

    return-void
.end method
