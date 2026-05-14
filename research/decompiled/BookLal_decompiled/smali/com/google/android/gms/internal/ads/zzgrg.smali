.class final synthetic Lcom/google/android/gms/internal/ads/zzgrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgri;

.field private final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgri;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrg;->zza:Lcom/google/android/gms/internal/ads/zzgri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgrg;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrg;->zza:Lcom/google/android/gms/internal/ads/zzgri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgrg;->zzb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgri;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method
