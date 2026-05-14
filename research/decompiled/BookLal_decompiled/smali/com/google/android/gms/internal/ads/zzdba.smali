.class final synthetic Lcom/google/android/gms/internal/ads/zzdba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdbb;

.field private final synthetic zzb:LN2/o;

.field private final synthetic zzc:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdbb;LN2/o;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zza:Lcom/google/android/gms/internal/ads/zzdbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzb:LN2/o;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zza:Lcom/google/android/gms/internal/ads/zzdbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzb:LN2/o;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzc:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdbb;->zzc(LN2/o;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcai;

    move-result-object v0

    return-object v0
.end method
