.class final Lcom/google/android/gms/internal/ads/zzgqp;
.super Lcom/google/android/gms/internal/ads/zzgpn;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgqw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgqr;Lcom/google/android/gms/internal/ads/zzgqw;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqp;->zza:Lcom/google/android/gms/internal/ads/zzgqr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpn;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqp;->zzb:Lcom/google/android/gms/internal/ads/zzgqw;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 4

    const/16 v0, 0x1fd6

    const-string v1, "statusCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "sessionToken"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "uiMode"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqv;->zzd()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgqu;->zza(I)Lcom/google/android/gms/internal/ads/zzgqu;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgqu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgqu;

    :cond_0
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgqu;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqp;->zzb:Lcom/google/android/gms/internal/ads/zzgqw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqu;->zzd()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzgqw;->zza(Lcom/google/android/gms/internal/ads/zzgqv;)V

    const/16 p1, 0x1fdd

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqp;->zza:Lcom/google/android/gms/internal/ads/zzgqr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqr;->zzd()V

    :cond_1
    return-void
.end method
