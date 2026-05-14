.class final synthetic Lcom/google/android/gms/internal/ads/zzfoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfog;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfnw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzfnw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zza:Lcom/google/android/gms/internal/ads/zzfog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzb:Lcom/google/android/gms/internal/ads/zzfnw;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zza:Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg()Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoe;->zzb:Lcom/google/android/gms/internal/ads/zzfnw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfoi;->zzb(Lcom/google/android/gms/internal/ads/zzfnw;)V

    return-void
.end method
