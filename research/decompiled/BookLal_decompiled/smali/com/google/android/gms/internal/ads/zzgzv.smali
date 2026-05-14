.class final synthetic Lcom/google/android/gms/internal/ads/zzgzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgzx;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgvi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgzx;Lcom/google/android/gms/internal/ads/zzgvi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Lcom/google/android/gms/internal/ads/zzgzx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zzb:Lcom/google/android/gms/internal/ads/zzgvi;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Lcom/google/android/gms/internal/ads/zzgzx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zzb:Lcom/google/android/gms/internal/ads/zzgvi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzx;->zzz(Lcom/google/android/gms/internal/ads/zzgvi;)V

    return-void
.end method
