.class final Lcom/google/android/gms/ads/internal/util/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbiv;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbiw;

.field final synthetic zzb:Landroid/os/Bundle;

.field final synthetic zzc:Landroid/content/Context;

.field final synthetic zzd:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/internal/ads/zzbiw;Landroid/os/Bundle;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zza:Lcom/google/android/gms/internal/ads/zzbiw;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzb:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzc:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzd:Landroid/net/Uri;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zza:Lcom/google/android/gms/internal/ads/zzbiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbiw;->zzc()Lp/n;

    move-result-object v1

    new-instance v2, Lp/k;

    invoke-direct {v2, v1}, Lp/k;-><init>(Lp/n;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzb:Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzU(Lp/k;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lp/k;->a()Lj3/G;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzimk;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lj3/G;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzk;->zzd:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lj3/G;->u(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbiw;->zzb(Landroid/app/Activity;)V

    return-void
.end method
