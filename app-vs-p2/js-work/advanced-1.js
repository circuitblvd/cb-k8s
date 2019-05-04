/*
#
# BSD 3-Clause License
#
# Copyright (c) Circuit Blvd., Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its
#    contributors may be used to endorse or promote products derived from
#    this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

var player = videojs('preview-player');

player.playlist([{
  name: 'Bick_Buck_Bunny',
  description:'Bick_Buck_Bunny',
  duration:596,
  sources: [{ src: 'mp4s/Bick_Buck_Bunny.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Bick_Buck_Bunny.png',
  thumbnail: [{
    srcset: 'mp4s/img/Bick_Buck_Bunny.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Bick_Buck_Bunny.png'
  }]
}, {
  name: 'Cats',
  description:'Cats',
  duration:10,
  sources: [{ src: 'mp4s/Cats.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Cats.png',
  thumbnail: [{
    srcset: 'mp4s/img/Cats.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Cats.png'
  }]
}, {
  name: 'Elephants_Dream',
  description:'Elephants_Dream',
  duration:653,
  sources: [{ src: 'mp4s/Elephants_Dream.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Elephants_Dream.png',
  thumbnail: [{
    srcset: 'mp4s/img/Elephants_Dream.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Elephants_Dream.png'
  }]
}, {
  name: 'Milky_Way',
  description:'Milky_Way',
  duration:5,
  sources: [{ src: 'mp4s/Milky_Way.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Milky_Way.png',
  thumbnail: [{
    srcset: 'mp4s/img/Milky_Way.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Milky_Way.png'
  }]
}, {
  name: 'MoonAndClouds2_1',
  description:'MoonAndClouds2_1',
  duration:49,
  sources: [{ src: 'mp4s/MoonAndClouds2_1.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/MoonAndClouds2_1.png',
  thumbnail: [{
    srcset: 'mp4s/img/MoonAndClouds2_1.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/MoonAndClouds2_1.png'
  }]
}, {
  name: 'Oceans',
  description:'Oceans',
  duration:46,
  sources: [{ src: 'mp4s/Oceans.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Oceans.png',
  thumbnail: [{
    srcset: 'mp4s/img/Oceans.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Oceans.png'
  }]
}, {
  name: 'PlaneOverhead',
  description:'PlaneOverhead',
  duration:12,
  sources: [{ src: 'mp4s/PlaneOverhead.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/PlaneOverhead.png',
  thumbnail: [{
    srcset: 'mp4s/img/PlaneOverhead.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/PlaneOverhead.png'
  }]
}, {
  name: 'Playing_Acoustic_Guitar',
  description:'Playing_Acoustic_Guitar',
  duration:25,
  sources: [{ src: 'mp4s/Playing_Acoustic_Guitar.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Playing_Acoustic_Guitar.png',
  thumbnail: [{
    srcset: 'mp4s/img/Playing_Acoustic_Guitar.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Playing_Acoustic_Guitar.png'
  }]
}, {
  name: 'Sintel',
  description:'Sintel',
  duration:888,
  sources: [{ src: 'mp4s/Sintel.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Sintel.png',
  thumbnail: [{
    srcset: 'mp4s/img/Sintel.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Sintel.png'
  }]
}, {
  name: 'Tears_of_Steel',
  description:'Tears_of_Steel',
  duration:734,
  sources: [{ src: 'mp4s/Tears_of_Steel.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/Tears_of_Steel.png',
  thumbnail: [{
    srcset: 'mp4s/img/Tears_of_Steel.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/Tears_of_Steel.png'
  }]
}, {
  name: 'WINE_POUR_SLOW_MOTION',
  description:'WINE_POUR_SLOW_MOTION',
  duration:20,
  sources: [{ src: 'mp4s/WINE_POUR_SLOW_MOTION.mp4', type: 'video/mp4' }],
  poster: 'mp4s/img/WINE_POUR_SLOW_MOTION.png',
  thumbnail: [{
    srcset: 'mp4s/img/WINE_POUR_SLOW_MOTION.png',
    type: 'image/png',
    media: '(min-width: 400px;)'
  }, {
    src: 'mp4s/img/WINE_POUR_SLOW_MOTION.png'
  }]
}]);


player.playlist.autoadvance(0.5);
player.playlist.repeat(true);
player.playlist.currentItem(8);

// Initialize the playlist-ui plugin with no option (i.e. the defaults).
player.playlistUi();

