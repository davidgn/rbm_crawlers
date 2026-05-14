.class final synthetic Lcom/google/android/gms/ads/internal/util/zzar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzat;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzhbf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzat;Lcom/google/android/gms/internal/ads/zzhbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzar;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzat;->zzm(Lcom/google/android/gms/internal/ads/zzhbf;)V

    return-void
.end method
