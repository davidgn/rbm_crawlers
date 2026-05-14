.class final synthetic Lcom/google/android/gms/internal/ads/zzbsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsz;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsz;Lcom/google/android/gms/internal/ads/zzazz;Lcom/google/android/gms/internal/ads/zzbsy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsp;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsp;->zzb:Lcom/google/android/gms/internal/ads/zzbsy;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsp;->zzb:Lcom/google/android/gms/internal/ads/zzbsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsp;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbsz;->zzd(Lcom/google/android/gms/internal/ads/zzazz;Lcom/google/android/gms/internal/ads/zzbsy;)V

    return-void
.end method
