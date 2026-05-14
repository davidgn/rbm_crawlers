.class final synthetic Lcom/google/android/gms/internal/ads/zzzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsk;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaaj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzzu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaaj;Lcom/google/android/gms/internal/ads/zzzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzo;->zza:Lcom/google/android/gms/internal/ads/zzaaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzo;->zzb:Lcom/google/android/gms/internal/ads/zzzu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzo;->zza:Lcom/google/android/gms/internal/ads/zzaaj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzo;->zzb:Lcom/google/android/gms/internal/ads/zzzu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzk(Lcom/google/android/gms/internal/ads/zzzu;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    return p1
.end method
