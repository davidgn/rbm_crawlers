.class final synthetic Lcom/google/android/gms/internal/ads/zzgdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/k;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgdk;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdk;Ljava/lang/String;ZLjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/android/gms/internal/ads/zzgdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zze:[B

    return-void
.end method


# virtual methods
.method public final synthetic attachCompleter(Landroidx/concurrent/futures/j;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/android/gms/internal/ads/zzgdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzc:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zze:[B

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdk;->zzc(Ljava/lang/String;ZLjava/lang/String;[BLandroidx/concurrent/futures/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
