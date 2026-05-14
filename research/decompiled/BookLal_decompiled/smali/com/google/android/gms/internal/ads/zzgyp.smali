.class public final Lcom/google/android/gms/internal/ads/zzgyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgyo;


# instance fields
.field private final zza:Ljava/util/Deque;

.field private zzb:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyo;->zza:Lcom/google/android/gms/internal/ads/zzgyo;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyp;->zzc:Lcom/google/android/gms/internal/ads/zzgyo;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgyo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zza:Ljava/util/Deque;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgyp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyp;->zzc:Lcom/google/android/gms/internal/ads/zzgyo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyp;-><init>(Lcom/google/android/gms/internal/ads/zzgyo;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzb:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zza:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    if-nez v0, :cond_1

    move-object v0, v7

    goto :goto_0

    :cond_1
    if-eq v0, v7, :cond_0

    :try_start_1
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgyn;->zza:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "<init>"

    const-string v4, "Suppressing exception thrown when closing "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "com.google.common.io.Closer"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzb:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zza(Ljava/lang/Throwable;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzb(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public final zzb(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zza:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final zzc(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzb:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zza(Ljava/lang/Throwable;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzb(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
