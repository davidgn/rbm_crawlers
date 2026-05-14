.class final synthetic Lcom/google/android/gms/internal/ads/zzgne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgng;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgeu;

.field private final synthetic zzc:[B

.field private final synthetic zzd:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgng;Lcom/google/android/gms/internal/ads/zzgeu;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgng;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgne;->zzb:Lcom/google/android/gms/internal/ads/zzgeu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgne;->zzc:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgne;->zzd:[B

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgng;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgne;->zzb:Lcom/google/android/gms/internal/ads/zzgeu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgne;->zzc:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgne;->zzd:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgng;->zzi(Lcom/google/android/gms/internal/ads/zzgeu;[B[B)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
