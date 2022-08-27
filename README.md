# Prepared images for RaspberryPi cluster

This is a prepared image used for distributed computations on the RaspberryPi cluster. It was created to speed-up and simplify the deployment to the raspberryPi cluster. The project is available at https://gitlab.fel.cvut.cz/jankurom/semestralni-projekt-a-bakalarska-prace.

It can be used straight out of the box to run Java or any other applications on the RaspberryPi using Docker. It has all the necessary applications and tools preinstaled.

## Contents

The image has preinstalled applications and tools that I used but you can add your own. Here is complete list of preinstalled applications and tools:

* maven
* openjdk-11-jdk
* sudo
* make
* gcc
* WiringPi (driver for RaspberryPi GPIO header)

## Usage

Prefered way is to use this image as a `FROM` in your `Dockerfile`. For example 

    FROM --platform=$BUILDPLATFORM uhl1k/rpi-base-image:version1

Alternatively, you can include this `Dockerfile` into yours but this would prolong the time of building your image and would make it unnecesary dificult.

## License

This software is licensed under MIT license. You can use it, modify it and distribute as you want as long as you keep link to the original author.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.